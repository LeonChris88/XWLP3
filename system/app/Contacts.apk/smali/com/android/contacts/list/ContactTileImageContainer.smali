.class public Lcom/android/contacts/list/ContactTileImageContainer;
.super Landroid/widget/FrameLayout;
.source "ContactTileImageContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileImageContainer;->forceLayout()V

    return-void
.end method
