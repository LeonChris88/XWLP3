.class Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
    }
.end annotation


# instance fields
.field private final mCertHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    return-void
.end method

.method private load()V
    .locals 2

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040091

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const v3, 0x7f0801b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1402(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0801b7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1502(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0801b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-static {v1, v3}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1602(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1400(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1500(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method
