.class Lcom/android/contacts/list/DefaultContactListAdapter$1;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-static {v4, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$000(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "sip"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-static {v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$100(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string v4, "tel"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method
