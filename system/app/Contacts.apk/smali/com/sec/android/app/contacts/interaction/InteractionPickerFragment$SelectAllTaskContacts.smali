.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1200(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
