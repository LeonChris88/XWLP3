.class public Lcom/android/contacts/model/GoogleAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "GoogleAccountType.java"


# static fields
.field private static final mExtensionPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.apps.plus"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    const-string v0, "com.google"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindRingtone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    return-void
.end method

.method private addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11

    const v2, 0x7f0a0109

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v3, -0x1

    const/16 v4, 0x96

    const v6, 0x7f04006b

    const v7, 0x1030044

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GoogleAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    new-instance v0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;

    const-string v1, "data1"

    const-string v3, "data15"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    sget-object v0, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v10, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5, v9}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9, v9}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method private addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10

    const v2, 0x7f0a010a

    const/16 v9, 0xe

    const/4 v5, 0x1

    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/relation"

    const/4 v3, -0x1

    const/16 v4, 0xa0

    const v6, 0x7f0400cf

    const v7, 0x1030044

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GoogleAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    new-instance v0, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0247

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0246

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    sget-object v0, Lcom/android/contacts/model/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    return-object v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
