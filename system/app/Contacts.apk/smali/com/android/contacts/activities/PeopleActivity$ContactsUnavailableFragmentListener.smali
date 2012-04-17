.class Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactsUnavailableActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsUnavailableFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onFreeInternalStorageAction()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
