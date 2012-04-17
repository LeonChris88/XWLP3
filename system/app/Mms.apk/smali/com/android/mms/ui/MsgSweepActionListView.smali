.class public Lcom/android/mms/ui/MsgSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "MsgSweepActionListView.java"


# instance fields
.field private mSweepActionOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method

.method private setSweepActionOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method

.method private setSweepActionOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method


# virtual methods
.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MsgSweepActionListView;->parentPerformItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOff()V

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOn()V

    goto :goto_0
.end method
