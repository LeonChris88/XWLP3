.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-void
.end method


# virtual methods
.method public setCurrentTimeForTest(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V
    .locals 14

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    array-length v2, v10

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v11, 0x7f0201eb

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v10, 0x3

    if-le v2, v10, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-eqz p4, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p3

    iget v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v10, v11, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v7, 0x0

    move-object v9, v3

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v10, :cond_7

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a02b4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a007d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    :cond_1
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-2"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-3"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    :goto_4
    sget-boolean v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "PhoneCallDetailsHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nameText : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", numberText : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v10, "PhoneCallDetailsHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listGroupSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    move/from16 v0, p5

    if-le v0, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/4 v13, 0x1

    invoke-static {p1, v11, v12, v13}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p3

    iget v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v10, :sswitch_data_0

    :goto_5
    return-void

    :pswitch_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v11, 0x7f0201f1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v11, 0x7f0201f3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v11, 0x7f0201f0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v11, 0x7f0201f2

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_6
    move-object v6, v3

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a0284

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    :cond_7
    move-object v6, v3

    const-string v9, ""

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/String;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v6, v3

    const-string v9, ""

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :cond_a
    move-object v6, v3

    const-string v9, ""

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v11, 0x7f0201db

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :sswitch_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v11, 0x7f0201da

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_2
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v11, 0x7f0201d5

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_3
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v11, 0x7f0201d6

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_4
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v11, 0x7f0201d9

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method
