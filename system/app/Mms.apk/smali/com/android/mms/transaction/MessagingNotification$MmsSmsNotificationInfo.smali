.class public Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmsSmsNotificationInfo"
.end annotation


# instance fields
.field public mClickIntent:Landroid/content/Intent;

.field public mCount:I

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    iput-object p7, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    iput p8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZII)V
    .locals 11

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    :goto_0
    iget-wide v6, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/transaction/MessagingNotification;->access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
