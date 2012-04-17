.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final callTypes:[I

.field public final cdnipNumber:Ljava/lang/String;

.field public final cnapName:Ljava/lang/String;

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final id:I

.field public final logType:I

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public final serviceType:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    iput p13, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    iput-object p14, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    const/4 v1, -0x1

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    invoke-direct/range {v0 .. v19}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    const/4 v1, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v0 .. v19}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
