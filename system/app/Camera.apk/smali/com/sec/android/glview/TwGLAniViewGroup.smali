.class public abstract Lcom/sec/android/glview/TwGLAniViewGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    }
.end annotation


# static fields
.field public static final ANI_FINISH:I = 0xffff

.field public static final ANI_PLAY:I = 0x1

.field public static final ANI_STOP:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLAniViewGroup"


# instance fields
.field protected mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-void
.end method


# virtual methods
.method protected playAnimation(I)V
    .locals 3

    const v2, 0xffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAlpha(F)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract setAnimationStep(I)V
.end method

.method public setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-void
.end method

.method public startCustomAnimation()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method public stopCustomAnimation()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method
