.class public Lcom/android/contacts/BackScrollManager;
.super Ljava/lang/Object;
.source "BackScrollManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    }
.end annotation


# instance fields
.field private final mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;

.field private final mListView:Landroid/widget/ListView;

.field private final mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method private constructor <init>(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/contacts/BackScrollManager$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/BackScrollManager$1;-><init>(Lcom/android/contacts/BackScrollManager;)V

    iput-object v0, p0, Lcom/android/contacts/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    iput-object p2, p0, Lcom/android/contacts/BackScrollManager;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/BackScrollManager;)Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    return-object v0
.end method

.method private bind()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/BackScrollManager;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/contacts/BackScrollManager;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public static bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V
    .locals 1

    new-instance v0, Lcom/android/contacts/BackScrollManager;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/BackScrollManager;-><init>(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    invoke-direct {v0}, Lcom/android/contacts/BackScrollManager;->bind()V

    return-void
.end method
