.class public Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mColumnName2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
