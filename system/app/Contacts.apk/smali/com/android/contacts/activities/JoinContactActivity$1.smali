.class Lcom/android/contacts/activities/JoinContactActivity$1;
.super Ljava/lang/Object;
.source "JoinContactActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/JoinContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/JoinContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNewContactAction(Z)V
    .locals 0

    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-static {v2, v0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->access$000(Lcom/android/contacts/activities/JoinContactActivity;J)V

    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
