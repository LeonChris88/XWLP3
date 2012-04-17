.class public Lcom/android/contacts/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalDivider:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method


# virtual methods
.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDefaultIconHires()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d00f2

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0d0101

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0d00f5

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f0d00f9

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f0d0102

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    const v1, 0x7f0d00f6

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    new-instance v0, Lcom/android/contacts/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileView$1;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method
