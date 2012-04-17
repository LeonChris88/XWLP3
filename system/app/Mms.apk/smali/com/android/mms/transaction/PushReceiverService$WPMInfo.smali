.class Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
.super Ljava/lang/Object;
.source "PushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WPMInfo"
.end annotation


# instance fields
.field private action:I

.field private created:J

.field private id:I

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiverService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/PushReceiverService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->this$0:Lcom/android/mms/transaction/PushReceiverService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->id:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->created:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->action:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/PushReceiverService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/PushReceiverService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->created:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->created:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->id:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->id:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->action:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->action:I

    return p1
.end method
