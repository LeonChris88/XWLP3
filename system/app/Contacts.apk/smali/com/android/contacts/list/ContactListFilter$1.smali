.class final Lcom/android/contacts/list/ContactListFilter$1;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactListFilter;
    .locals 11

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    :goto_0
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    new-array v0, p1, [Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter$1;->newArray(I)[Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method
