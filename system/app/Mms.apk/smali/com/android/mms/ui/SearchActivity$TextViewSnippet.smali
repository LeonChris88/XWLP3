.class public Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sEllipsis:Ljava/lang/String;

.field private static sTypefaceHighlight:I


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u2026"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    const-string v0, "Mms/TextViewSnippet"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 29

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v26, "onLayout"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fullTextLower= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "targetStringLower= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v18, 0x0

    cmpl-float v25, v17, v23

    if-lez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v16

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :goto_1
    :try_start_0
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    :goto_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_b

    new-instance v25, Landroid/text/style/StyleSpan;

    sget v26, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    invoke-direct/range {v25 .. v26}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v26

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v26, "SearchActivity: IllegalArgumentException"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v26, "onLayout"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v25, 0x4000

    mul-float v25, v25, v8

    sub-float v23, v23, v25

    const/4 v14, -0x1

    const/16 v20, -0x1

    const/4 v9, -0x1

    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v26, "loop1"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/16 v25, 0x0

    sub-int v26, v21, v14

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v25, v21, v16

    add-int v25, v25, v14

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v0, v20

    if-ne v13, v0, :cond_5

    if-ne v12, v9, :cond_5

    :cond_4
    :goto_5
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v26, "loop1"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move/from16 v20, v13

    move v9, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v25

    cmpg-float v25, v25, v15

    if-gez v25, :cond_8

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v25

    cmpl-float v25, v25, v23

    if-lez v25, :cond_8

    const-string v26, "%s%s%s"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    if-nez v20, :cond_6

    const-string v25, ""

    :goto_6
    aput-object v25, v27, v28

    const/16 v25, 0x1

    aput-object v6, v27, v25

    const/16 v28, 0x2

    if-ne v9, v5, :cond_7

    const-string v25, ""

    :goto_7
    aput-object v25, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_6
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_6

    :cond_7
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v25

    cmpl-float v25, v25, v23

    if-gtz v25, :cond_4

    const-string v26, "%s%s%s"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    if-nez v20, :cond_9

    const-string v25, ""

    :goto_8
    aput-object v25, v27, v28

    const/16 v25, 0x1

    aput-object v6, v27, v25

    const/16 v28, 0x2

    if-ne v9, v5, :cond_a

    const-string v25, ""

    :goto_9
    aput-object v25, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    :cond_9
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_8

    :cond_a
    sget-object v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_9

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->requestLayout()V

    return-void
.end method
