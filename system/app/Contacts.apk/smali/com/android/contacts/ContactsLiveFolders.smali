.class public Lcom/android/contacts/ContactsLiveFolders;
.super Ljava/lang/Object;
.source "ContactsLiveFolders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsLiveFolders$AllContacts;,
        Lcom/android/contacts/ContactsLiveFolders$PhoneContacts;,
        Lcom/android/contacts/ContactsLiveFolders$StarredContacts;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/ContactsLiveFolders;->createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.ICON"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method
