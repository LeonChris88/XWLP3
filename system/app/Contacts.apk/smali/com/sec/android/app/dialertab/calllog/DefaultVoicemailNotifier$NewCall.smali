.class final Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final callsUri:Landroid/net/Uri;

.field public final number:Ljava/lang/String;

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    return-void
.end method
