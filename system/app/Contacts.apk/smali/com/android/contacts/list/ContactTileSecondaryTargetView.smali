.class public Lcom/android/contacts/list/ContactTileSecondaryTargetView;
.super Lcom/android/contacts/list/ContactTileStarredView;
.source "ContactTileSecondaryTargetView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/list/ContactTileSecondaryTargetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileStarredView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactTileStarredView;->onFinishInflate()V

    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->mSecondaryButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;-><init>(Lcom/android/contacts/list/ContactTileSecondaryTargetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
