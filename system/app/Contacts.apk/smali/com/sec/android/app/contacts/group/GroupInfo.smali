.class public Lcom/sec/android/app/contacts/group/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final groupId:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    iput-object p5, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
