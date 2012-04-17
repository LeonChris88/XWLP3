.class public Lcom/android/contacts/ContactPresenceIconUtil;
.super Ljava/lang/Object;
.source "ContactPresenceIconUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const v0, 0x10800ae

    goto :goto_0

    :pswitch_1
    const v0, 0x10800ac

    goto :goto_0

    :pswitch_2
    const v0, 0x10800ad

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const v0, 0x10800af

    goto :goto_0

    :pswitch_4
    const v0, 0x10800b1

    goto :goto_0

    :pswitch_5
    const v0, 0x10800b0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
