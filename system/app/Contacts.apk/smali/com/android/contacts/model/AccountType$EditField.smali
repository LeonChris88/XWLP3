.class public Lcom/android/contacts/model/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inputType:I

.field public isFullName:Z

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    iput p2, p0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    return-void
.end method


# virtual methods
.method public isMultiLine()Z
    .locals 2

    iget v0, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsFullName(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->isFullName:Z

    return-object p0
.end method

.method public setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    return-object p0
.end method
