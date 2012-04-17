.class public Lcom/android/contacts/model/FallbackAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "FallbackAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    const-string v0, "vnd.sec.contact.phone"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    const v0, 0x7f0a0119

    iput v0, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    const v0, 0x7f030004

    iput v0, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindRingtone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

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

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

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

    invoke-virtual {p0, v10, v5}, Lcom/android/contacts/model/FallbackAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5, v9}, Lcom/android/contacts/model/FallbackAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/model/FallbackAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9, v9}, Lcom/android/contacts/model/FallbackAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

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

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

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

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

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
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
