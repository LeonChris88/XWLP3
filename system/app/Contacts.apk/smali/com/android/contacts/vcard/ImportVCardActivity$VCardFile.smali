.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardFile"
.end annotation


# instance fields
.field private final mCanonicalPath:Ljava/lang/String;

.field private final mLastModified:J

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mLastModified:J

    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mLastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method
