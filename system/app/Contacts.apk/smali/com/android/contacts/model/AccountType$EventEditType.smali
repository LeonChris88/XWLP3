.class public Lcom/android/contacts/model/AccountType$EventEditType;
.super Lcom/android/contacts/model/AccountType$EditType;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventEditType"
.end annotation


# instance fields
.field private mYearOptional:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-void
.end method


# virtual methods
.method public isYearOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/model/AccountType$EventEditType;->mYearOptional:Z

    return v0
.end method

.method public setYearOptional(Z)Lcom/android/contacts/model/AccountType$EventEditType;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EventEditType;->mYearOptional:Z

    return-object p0
.end method
