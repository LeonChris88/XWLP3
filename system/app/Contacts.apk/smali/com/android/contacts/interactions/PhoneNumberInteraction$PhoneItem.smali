.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field id:J

.field label:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field type:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/interactions/PhoneNumberInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->collapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z
    .locals 4

    const-string v0, "vnd.android.cursor.item/phone_v2"

    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    iget-object v3, p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
