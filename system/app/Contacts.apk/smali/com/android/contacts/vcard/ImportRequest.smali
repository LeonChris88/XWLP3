.class public Lcom/android/contacts/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    iput-object p3, p0, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    iput-object p6, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    iput p7, p0, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    iput p8, p0, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    return-void
.end method
