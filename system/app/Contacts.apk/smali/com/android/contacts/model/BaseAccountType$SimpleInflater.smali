.class public Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
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
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v7, :cond_1

    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_3
    return-object v1

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    if-nez v3, :cond_0

    if-eqz v2, :cond_5

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v1, v4

    goto :goto_3
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v9, :cond_2

    move v4, v7

    :goto_1
    if-eq v1, v5, :cond_3

    move v3, v7

    :goto_2
    if-eqz v4, :cond_4

    iget v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_5
    return-object v2

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_1

    :cond_3
    move v3, v8

    goto :goto_2

    :cond_4
    move-object v2, v6

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto :goto_4

    :cond_6
    if-nez v4, :cond_0

    if-eqz v3, :cond_7

    move-object v2, v0

    goto :goto_5

    :cond_7
    move-object v2, v6

    goto :goto_5
.end method
