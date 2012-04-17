.class public abstract Lcom/android/contacts/model/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountType$DisplayLabelComparator;,
        Lcom/android/contacts/model/AccountType$StringInflater;,
        Lcom/android/contacts/model/AccountType$EditField;,
        Lcom/android/contacts/model/AccountType$EventEditType;,
        Lcom/android/contacts/model/AccountType$EditType;
    }
.end annotation


# static fields
.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field public iconRes:I

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public resPackageName:Ljava/lang/String;

.field public summaryResPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/model/AccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    return-void
.end method

.method static getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/model/DataKind;->resPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public abstract areContactsWritable()Z
.end method

.method public getAccountTypeAndDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountType;->getInviteContactActionResId()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/model/AccountType;->getViewGroupLabelResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/contacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const v1, 0x7f0a01c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGroupMembershipEditable()Z
.end method
