.class public Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.super Landroid/app/Activity;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;,
        Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_IMAGES:[I

.field private static final PHOTO_NUMBER_IMAGES:[I

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;


# instance fields
.field LAUNCH_ANIMATION_DURATION:I

.field private isFirstAnimation:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

.field private mBoddy:Landroid/widget/LinearLayout;

.field private mBodyText:Landroid/widget/TextView;

.field private mButtonDialog:Landroid/app/AlertDialog;

.field private mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

.field private mChangedDataIds:[J

.field private mChangedPosition:I

.field private mCheckedItems:[Z

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentMode:I

.field private mFixedSpeedDialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastClickedView:Landroid/view/View;

.field private mLastLongClickedName:Ljava/lang/CharSequence;

.field private mListDialog:Landroid/app/AlertDialog;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrderOfValue:I

.field private mOriginDataIds:[J

.field private mPhotos:[Landroid/graphics/Bitmap;

.field private mSaveBtn:Landroid/view/View;

.field private mSelectedPhoneNumber:Ljava/lang/String;

.field private mSpeedDialGrid:Landroid/widget/GridView;

.field private mSpeedDialUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;

.field private mTitleBarHeight:F

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "speed_dial_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1dt 0x1t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
        0x25t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x2bt 0x1t 0x2t 0x7ft
        0x2dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x35t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDialList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2100()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    return-object v0
.end method

.method private addMenu(Landroid/view/Menu;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :pswitch_0
    const v0, 0x7f0a003f

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a022a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    const v1, 0x7f0a028e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkRemoveButtonEnable()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private deleteSlot(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private preventDoubleClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public animateLayoutAtEntrance()V
    .locals 22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->LAUNCH_ANIMATION_DURATION:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v19

    goto :goto_0
.end method

.method public getPersonCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v1, 0x1

    :goto_1
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v5, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    if-eqz v3, :cond_1

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 25

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "index"

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v2, 0x3b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/16 v16, 0x1

    :goto_1
    if-nez v16, :cond_4

    const-string v2, "phone_data_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v22, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const-wide/16 v14, -0x1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key_number"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "speed_dial_data_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v2, "SpeedDialActivity"

    const-string v3, "Contact uri is null, contact does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4
    const-string v2, "phone_data_id"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v17, 0x0

    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v8, v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, -0x2

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "isFirstAnimation"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    const v5, 0x7f0400c2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x41caa3d7

    mul-float/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F

    const-string v5, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v11, [[I

    new-array v7, v10, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    aput-object v7, v6, v9

    new-array v7, v10, [I

    aput-object v7, v6, v10

    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;

    const v5, 0x7f0d0204

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    new-instance v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-direct {v5, p0, v12}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-ne v5, v11, :cond_1

    const v5, 0x7f04001c

    invoke-virtual {v3, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0d00a5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    :goto_0
    const v5, 0x7f0d009d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v13, v13, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    :cond_1
    const v5, 0x7f040018

    invoke-virtual {v3, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0d009e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    goto :goto_0

    :pswitch_0
    const v5, 0x7f0a0211

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    const v5, 0x7f0a022a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    const v5, 0x7f0a028e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ne v5, v8, :cond_0

    aget-object v5, v4, v9

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    aget-object v5, v4, v7

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    :cond_0
    if-ne p1, v7, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04003d

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v6, 0x7f0d00f0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    const v6, 0x7f0d00f1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    const-string v5, "persist.sys.country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    const-string v5, "TNZ"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "VNZ"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "VNX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "NZC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "PH"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "NO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBoddy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a02af

    new-instance v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a02ba

    new-instance v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f0a02ab

    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    :goto_1
    return-object v5

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-ne p1, v8, :cond_9

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-nez v5, :cond_8

    const-string v5, "title"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2
    new-array v5, v8, [Ljava/lang/String;

    const v6, 0x7f0a02b6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0a028e

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    new-instance v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_9
    move-object v5, v6

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->animateLayoutAtEntrance()V

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->isFirstAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getPersonCount()I

    move-result v1

    if-ge v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->addMenu(Landroid/view/Menu;I)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->addMenu(Landroid/view/Menu;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangeOrderTouchListener:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v1, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    if-nez p3, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    const/4 v14, 0x0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v14, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v1, :cond_8

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "persist.sys.country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x1

    const-string v1, "TNZ"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VNZ"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VNX"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NZC"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PH"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NO"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v10, 0x0

    :cond_4
    if-eqz v10, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    :cond_6
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mBodyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v7, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->preventDoubleClick(Landroid/view/View;)V

    new-instance v9, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_speed_dial"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_result"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "index"

    move/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move/from16 v0, p3

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    goto/16 :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mListDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showDialog(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getPersonCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "lastLongClickedName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    const-string v0, "originDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    const-string v0, "changedDataIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    const-string v0, "checkedItems"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    const-string v0, "changedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_0

    const-string v0, "isSaveButtonEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastClickedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string v0, "lastLongClickedName"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mLastLongClickedName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "originDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "changedDataIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "checkedItems"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "changedPosition"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-eqz v0, :cond_1

    const-string v0, "isSaveButtonEnabled"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSaveBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public restartActivityInMode(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->finish()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isFirstAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v6, v8, p3, p4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v7

    :cond_0
    const/4 v7, -0x1

    goto :goto_0
.end method

.method public setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v1, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOrderOfValue:I

    if-ne v6, v8, :cond_5

    const-string v6, "display_name_alt"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aget-object v2, v6, p4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mPhotos:[Landroid/graphics/Bitmap;

    aput-object v3, v6, p4

    if-nez v3, :cond_6

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f020133

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    if-ne v6, v8, :cond_7

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCheckedItems:[Z

    add-int/lit8 v8, p4, -0x1

    aget-boolean v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v7, 0x7f020134

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    sget-object v7, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I

    aget v7, v7, p4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "display_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    :cond_6
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v6, p3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J

    aget-wide v0, v5, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J

    aget-wide v5, v5, v3

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    const-string v5, "speed_dial_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "key_number"

    add-int/lit8 v6, v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->restartActivityInMode(I)V

    return-void
.end method
