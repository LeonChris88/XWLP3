.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/FrameLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setupAnimations(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setupAnimations(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method private setupAnimations(Landroid/content/Context;)V
    .locals 12

    new-instance v8, Landroid/animation/LayoutTransition;

    invoke-direct {v8}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/PhotoEditorView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/4 v9, 0x0

    const-wide/16 v10, 0x1e

    invoke-virtual {v8, v9, v10, v11}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    const/4 v9, 0x1

    const-wide/16 v10, 0x1e

    invoke-virtual {v8, v9, v10, v11}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const-string v9, "scaleX"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v9, "scaleY"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/Object;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-instance v9, Lcom/android/contacts/editor/PhotoEditorView$2;

    invoke-direct {v9, p0}, Lcom/android/contacts/editor/PhotoEditorView$2;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v9, "scaleX"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v9, "scaleY"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/Object;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-instance v9, Lcom/android/contacts/editor/PhotoEditorView$3;

    invoke-direct {v9, p0}, Lcom/android/contacts/editor/PhotoEditorView$3;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(J)V

    return-void

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data
.end method


# virtual methods
.method public deleteEditor()V
    .locals 0

    return-void
.end method

.method public hasSetPhoto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected resetDefault()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 0

    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "is_super_primary"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PhotoEditorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "is_super_primary"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setId(I)V

    if-eqz p2, :cond_1

    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
