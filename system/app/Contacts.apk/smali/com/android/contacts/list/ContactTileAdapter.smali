.class public Lcom/android/contacts/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileAdapter$2;,
        Lcom/android/contacts/list/ContactTileAdapter$Listener;,
        Lcom/android/contacts/list/ContactTileAdapter$ViewTypes;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;,
        Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumnCount:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field private mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

.field private mLookupIndex:I

.field private mNameIndex:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPhotoUriIndex:I

.field private mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field private mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    new-instance v0, Lcom/android/contacts/list/ContactTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileAdapter$1;-><init>(Lcom/android/contacts/list/ContactTileAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    iput-object p4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileAdapter;->bindColumnIndices()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method private bindColumnIndices()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x6

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    iput v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    iput v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    iput v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    goto :goto_0
.end method

.method private createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .locals 13

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-gt v11, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;-><init>()V

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_1
    iput-object v5, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    :goto_2
    iput-object v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v11, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v12, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v11, v12, :cond_4

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v11, v7, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhoneNumberIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a00fc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const/4 v9, 0x0

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    iput-object v1, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_6
    if-nez v10, :cond_7

    if-eqz v9, :cond_7

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    :cond_7
    iput-object v10, v0, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getDivider()Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d0114

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :pswitch_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLayoutResourceId(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040042

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040041

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_1

    const v0, 0x7f04003f

    goto :goto_0

    :cond_1
    const v0, 0x7f04003e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f040043

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRowCount(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableQuickContact(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    return-void
.end method

.method public getCount()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    sub-int v0, v3, v4

    if-nez v0, :cond_1

    :goto_1
    add-int/2addr v0, v2

    add-int v2, v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v2

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$2;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileAdapter;->getDivider()Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;Z)V

    move-object p2, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method
