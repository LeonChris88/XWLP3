.class public Lcom/android/mms/ui/DeleteInfo;
.super Ljava/lang/Object;
.source "DeleteInfo.java"


# instance fields
.field public mLast:Z

.field public mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    iput-boolean p3, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    return-void
.end method
