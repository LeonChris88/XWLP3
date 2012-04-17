.class Lcom/android/contacts/activities/DialtactsActivity$8;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v1, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$700(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
