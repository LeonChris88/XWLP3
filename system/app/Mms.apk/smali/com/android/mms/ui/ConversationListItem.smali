.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/LinearLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static LIST_FROM_TEXT_SIZE_HUGE:F

.field public static LIST_FROM_TEXT_SIZE_LARGE:F

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F

.field public static LIST_FROM_TEXT_SIZE_SMALL:F

.field public static LIST_FROM_TEXT_SIZE_TINY:F

.field private static LIST_HEIGHT_HUGE:I

.field private static LIST_HEIGHT_LARGE:I

.field private static LIST_HEIGHT_NORMAL:I

.field private static LIST_HEIGHT_SMALL:I

.field private static LIST_HEIGHT_TINY:I

.field private static LIST_SUBJECT_TEXT_SIZE_HUGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_LARGE:F

.field private static LIST_SUBJECT_TEXT_SIZE_NORMAL:F

.field private static LIST_SUBJECT_TEXT_SIZE_SMALL:F

.field private static LIST_SUBJECT_TEXT_SIZE_TINY:F

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

.field private mDateView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mMsgPointer:Landroid/widget/ImageView;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x4190

    const/high16 v2, 0x4180

    const/16 v1, 0x40

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    const v0, 0x419547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    const v0, 0x41a547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    const v0, 0x41b547ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    const v0, 0x41cd47ae

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    const/high16 v0, 0x4160

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    sput v3, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CBmessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    const-string v4, "Push message"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    return-void
.end method

.method private updateAvatarView()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v6, :cond_7

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/ui/ConversationListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineLocker()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isOnlineAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Push message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateFromView()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->setConversationListItemData(Lcom/android/mms/ui/ConversationListItemData;)V

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getUnreadMessageCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasDraft()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListItem;->formatMessage(Lcom/android/mms/ui/ConversationListItemData;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSmsMmsCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getPresenceResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListItem;->setPresenceIcon(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize()V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->setLongClickable(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f09016e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public changeFontSize()V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, -0x5

    const/4 v6, -0x4

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, -0xa

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    if-ne v0, v9, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v7, v5, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v7, v5, v7, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xb

    invoke-virtual {v4, v7, v5, v7, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v7, v5, v7, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method public getAvatarView()Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getContacts()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversationListItemData:Lcom/android/mms/ui/ConversationListItemData;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setCheckBox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    return-void
.end method

.method public setMessagePointer(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgPointer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresenceIcon(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/Boolean;)V
    .locals 3

    const v1, -0x777778

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method
