.class Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;
.super Landroid/database/ContentObserver;
.source "LogsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "LogsSelectActivity"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$002(Z)Z

    return-void
.end method
