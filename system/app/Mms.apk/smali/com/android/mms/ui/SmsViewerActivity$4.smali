.class Lcom/android/mms/ui/SmsViewerActivity$4;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->val$values:Landroid/content/ContentValues;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->val$msgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$4;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SmsViewerActivity;->access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    return-void
.end method
