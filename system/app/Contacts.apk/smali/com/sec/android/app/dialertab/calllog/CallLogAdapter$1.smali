.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
