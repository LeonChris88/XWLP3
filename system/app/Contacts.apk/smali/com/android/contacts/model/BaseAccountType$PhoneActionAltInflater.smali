.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2

    const v0, 0x7f0a0136

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0a012f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a0130

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0131

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a0132

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a0133

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0a0134

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0a0135

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0a0137

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0a0138

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0a0139

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0a013a

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0a013b

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0a013c

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0a013d

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0a013e

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0a013f

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0a0140

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0a0141

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0a0142

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0a0143

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
