.class Lcom/android/contacts/activities/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method
