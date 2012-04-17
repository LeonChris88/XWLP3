.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private id:I

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoID()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return v0
.end method
