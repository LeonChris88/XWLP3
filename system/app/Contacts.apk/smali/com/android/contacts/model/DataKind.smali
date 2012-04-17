.class public Lcom/android/contacts/model/DataKind;
.super Ljava/lang/Object;
.source "DataKind.java"


# instance fields
.field public actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBodySocial:Z

.field public actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field public dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field public defaultValues:Landroid/content/ContentValues;

.field public editable:Z

.field public final editorLayoutResourceId:I

.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditField;",
            ">;"
        }
    .end annotation
.end field

.field public iconAltRes:I

.field public iconRes:I

.field public isList:Z

.field public mimeType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public final textAppearanceResourceId:I

.field public titleRes:I

.field public typeColumn:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation
.end field

.field public typeOverallMax:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    const v0, 0x7f0400cf

    iput v0, p0, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    const v0, 0x1030044

    iput v0, p0, Lcom/android/contacts/model/DataKind;->textAppearanceResourceId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZII)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    iput-object p1, p0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    iput p2, p0, Lcom/android/contacts/model/DataKind;->titleRes:I

    iput p3, p0, Lcom/android/contacts/model/DataKind;->iconRes:I

    iput p4, p0, Lcom/android/contacts/model/DataKind;->weight:I

    iput-boolean p5, p0, Lcom/android/contacts/model/DataKind;->editable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/DataKind;->isList:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    iput p6, p0, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iput p7, p0, Lcom/android/contacts/model/DataKind;->textAppearanceResourceId:I

    return-void
.end method
