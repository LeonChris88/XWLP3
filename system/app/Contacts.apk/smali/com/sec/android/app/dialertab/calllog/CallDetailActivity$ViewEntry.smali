.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public videoLetterDescription:Ljava/lang/String;

.field public videoLetterIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIcon:I

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIcon:I

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->videoLetterIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->videoLetterDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    return-void
.end method
