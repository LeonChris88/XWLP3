.class Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CbConfigPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0, p3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$002(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    :cond_0
    return-void
.end method
