.class Lcom/sec/android/app/camera/widget/TwImageButton$1;
.super Landroid/view/OrientationEventListener;
.source "TwImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->access$000(Lcom/sec/android/app/camera/widget/TwImageButton;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->access$100(Lcom/sec/android/app/camera/widget/TwImageButton;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iput v0, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    goto :goto_0
.end method
