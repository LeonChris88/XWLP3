.class public Lcom/android/mms/transaction/TransactionBundle;
.super Ljava/lang/Object;
.source "TransactionBundle.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getMmscUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mmsc-url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTransactionType()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
