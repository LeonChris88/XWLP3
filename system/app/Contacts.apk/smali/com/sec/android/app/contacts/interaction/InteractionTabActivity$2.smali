.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    return-void
.end method
