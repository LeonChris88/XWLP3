.class public Lcom/android/settings/fmm/RecipientsPlusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsPlusView.java"


# instance fields
.field private SMSMessage:Landroid/widget/EditText;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public DoSave()Z
    .locals 15

    const/4 v12, 0x0

    new-instance v8, Lcom/android/internal/util/NVStore;

    invoke-direct {v8}, Lcom/android/internal/util/NVStore;-><init>()V

    const-string v10, ""

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b070e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v2, "1"

    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_5

    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0725

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->setFocus()V

    :goto_3
    return v12

    :cond_0
    const-string v5, "0"

    goto/16 :goto_0

    :cond_1
    const-string v2, "0"

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_5
    :goto_5
    const/4 v13, 0x5

    if-eq v7, v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v3, :cond_8

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0726

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_8
    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a

    :cond_9
    const-string v1, "0000"

    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v13, 0x3b

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04004e

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    move v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public init()V
    .locals 15

    const v14, 0x7f04004e

    const/4 v13, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    :cond_1
    const-string v7, ""

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    :cond_2
    const-string v8, ""

    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    :cond_3
    const-string v9, ""

    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c

    :cond_4
    const-string v10, ""

    :goto_4
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v5, :cond_7

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    const-string v5, ""

    :cond_7
    const v11, 0x7f08009e

    invoke-virtual {p0, v11}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->SMSMessage:Landroid/widget/EditText;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v6}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_1

    :cond_a
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v8}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_2

    :cond_b
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v9}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_3

    :cond_c
    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0, v10}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_4
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/fmm/RecipientsPlusView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/fmm/RecipientsPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/RecipientsPlusView$1;-><init>(Lcom/android/settings/fmm/RecipientsPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RecipientsPlusView;->init()V

    return-void
.end method
