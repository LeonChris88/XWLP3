.class Lcom/android/mms/ui/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13

    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_0
    return-object v6

    :cond_1
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v10, v6}, Lcom/android/mms/ui/NumberPicker;->access$1100(Lcom/android/mms/ui/NumberPicker;Ljava/lang/String;)I

    move-result v8

    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1200(Lcom/android/mms/ui/NumberPicker;)I

    move-result v10

    if-le v8, v10, :cond_2

    const-string v6, ""

    goto :goto_0

    :cond_2
    move-object v6, v3

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v6, ""

    goto :goto_0

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/NumberPicker;->access$1300(Lcom/android/mms/ui/NumberPicker;II)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v0, p5

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const-string v6, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/NumberPicker;->access$900()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
