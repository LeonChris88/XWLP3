.class Lcom/android/settings/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const v2, 0x7f0b07c5

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "AccountSyncSettings : Sync now button is clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$300(Lcom/android/settings/accounts/AccountSyncSettings;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$400(Lcom/android/settings/accounts/AccountSyncSettings;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    return-void

    :cond_0
    const-string v0, "AccountSettings"

    const-string v1, "AccountSyncSettings : Cancel sync button is clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$500(Lcom/android/settings/accounts/AccountSyncSettings;)V

    goto :goto_0
.end method
