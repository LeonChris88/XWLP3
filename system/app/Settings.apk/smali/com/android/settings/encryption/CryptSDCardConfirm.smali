.class public Lcom/android/settings/encryption/CryptSDCardConfirm;
.super Landroid/app/Fragment;
.source "CryptSDCardConfirm.java"


# static fields
.field private static final FULL_DIR_ENC_ENABLED:Z


# instance fields
.field private DEBUG:Z

.field private mButtonEncSdCard:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mParent:Landroid/app/Activity;

.field private mPassword:Ljava/lang/String;

.field private mSdCardEncMessageTitle:Landroid/widget/TextView;

.field private mSdCardEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "true"

    const-string v1, "ro.secfulldirenc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/encryption/CryptSDCardConfirm;->FULL_DIR_ENC_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->DEBUG:Z

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardConfirm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardConfirm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardConfirm;->applySDEncryption(Ljava/lang/String;)V

    return-void
.end method

.method private applySDEncryption(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v3, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {v0, v1, p1}, Landroid/dirEncryption/DirEncryptionManager;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private restoreUI()V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    const v3, 0x7f0b075b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b075d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0761

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b075f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00f8\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0764

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0762

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00f8\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0763

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    const v3, 0x7f0b075c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b075e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    sget-boolean v2, Lcom/android/settings/encryption/CryptSDCardConfirm;->FULL_DIR_ENC_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v2, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00f8\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0760

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00f8\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0765

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mParent:Landroid/app/Activity;

    const-string v0, "CryptSDCardEncStatus"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f04002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessageTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mSdCardEncMessages:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enc"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fullEnc"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "excludeMedia"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mButtonEncSdCard:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/encryption/CryptSDCardConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/encryption/CryptSDCardConfirm$1;-><init>(Lcom/android/settings/encryption/CryptSDCardConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->restoreUI()V

    return-void
.end method
