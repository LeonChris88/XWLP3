.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;,
        Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    }
.end annotation


# instance fields
.field private mAccountIconLayoutHeight:I

.field private final mAccountIconSize:I

.field private mAccountIconsLayout:Landroid/widget/LinearLayout;

.field private final mAccountIconsLayoutMarginRight:I

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private final mCallButtonPadding:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxHeight:I

.field private final mCheckBoxMarginLeft:I

.field private final mCheckBoxMarginRight:I

.field private mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDefaultPhotoViewSize:I

.field private mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private final mGapBetweenPresenceIconAndAccountIcons:I

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelTextViewHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mListCallVerticalDividerVisible:Z

.field private final mMaxNumberOfAccountIcon:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private final mPhotoMarginLeft:I

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private final mPresenceIconMarginTop:I

.field private final mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStarredIcon:Landroid/widget/ImageView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private final mTouchWizIndexScrollMarginRight:I

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v7, -0x100

    const/16 v6, 0xc

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingLeft:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    const/16 v1, 0xd

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    const/16 v1, 0x15

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    new-instance v1, Lcom/android/contacts/format/PrefixHighlighter;

    const/16 v2, 0x11

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/contacts/format/PrefixHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    const/16 v1, 0x1d

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    const/16 v1, 0x20

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    const/16 v1, 0x21

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I

    const/16 v1, 0x23

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTouchWizIndexScrollMarginRight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    new-instance v1, Lcom/android/contacts/format/DisplayNameFormatter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-direct {v1, v2}, Lcom/android/contacts/format/DisplayNameFormatter;-><init>(Lcom/android/contacts/format/PrefixHighlighter;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    new-instance v1, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;-><init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setId(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setDuplicateParentStateEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelTextViewHeight:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTouchWizIndexScrollMarginRight:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayoutMarginRight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method private ensureListCallVerticalDivider()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-eqz v1, :cond_4

    :goto_2
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private ensureVerticalDivider()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    :cond_0
    return-void
.end method

.method private getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0
.end method

.method private isPhoneAccount(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 6

    const v5, 0x7f0f0035

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    const-string v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "he"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "huge_font"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0036

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10102af

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01ee

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStarredIcon()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideDisplayName()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected isInvisible(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x0

    sub-int v1, p5, p3

    sub-int v4, p4, p2

    const/4 v3, 0x0

    move v0, v1

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingLeft:I

    iget-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v5, v2, v9, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    sub-int v6, v4, v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v3, v5

    :cond_1
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingRight:I

    sub-int v7, v4, v7

    invoke-virtual {v5, v2, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v0, v5

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v5, v9, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingTop:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPaddingBottom:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v5, v2, v3, p4, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v3, v4, v4}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v1, v3

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/high16 v4, -0x8000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removePhotoView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    :cond_1
    return-void
.end method

.method public removePhotoViewForDeleteMode()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode(ZZ)V

    return-void
.end method

.method public removePhotoViewForDeleteMode(ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    return-void
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    return-void
.end method

.method public setHighlightedPrefix([C)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneticName([CI)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/TextView;->setText([CII)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f020147

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_2
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/format/DisplayNameFormatter;->setUnknownNameText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAccountIcons(Landroid/database/Cursor;I)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactListItemView;->isPhoneAccount(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    new-instance v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    invoke-virtual {v0, v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public showCheckBox(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;IIZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v0}, Lcom/android/contacts/format/DisplayNameFormatter;->getNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v0}, Lcom/android/contacts/format/DisplayNameFormatter;->getAlternateNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p5, p4, v2}, Lcom/android/contacts/format/DisplayNameFormatter;->setDisplayName(Landroid/widget/TextView;IZ[C)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01ee

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showDisplayNameAsGalSearchShowMore()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0218

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 10

    const/16 v9, 0xa

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "deferred_snippeting"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    move-object v1, v7

    :goto_1
    const-string v4, "deferred_snippeting_query"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\u2026"

    const/4 v6, 0x5

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/provider/ContactsContract;->snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v8, :cond_3

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-eq v1, v8, :cond_4

    add-int/lit8 v0, v1, 0x1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v8, :cond_7

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v8, :cond_7

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    if-ge v0, v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_5

    if-eq v5, v3, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    move-object v7, v4

    goto :goto_3
.end method

.method public showStarredIcon(Landroid/database/Cursor;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStarredIcon()Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
