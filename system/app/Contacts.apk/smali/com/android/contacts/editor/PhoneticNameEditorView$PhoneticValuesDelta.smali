.class Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhoneticNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticValuesDelta"
.end annotation


# instance fields
.field private mPhoneticName:Ljava/lang/String;

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    return-void
.end method

.method private buildPhoneticName()V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data9"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data8"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data7"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    return-void
.end method

.method private parsePhoneticName(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data9"

    const-string v3, "data9"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data8"

    const-string v3, "data8"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data7"

    const-string v3, "data7"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->parsePhoneticName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    goto :goto_0
.end method
