.class Lcom/sec/android/app/camera/CamcorderIndicators$1;
.super Landroid/view/OrientationEventListener;
.source "CamcorderIndicators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderIndicators;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderIndicators;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$000(Lcom/sec/android/app/camera/CamcorderIndicators;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v1, v1, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$100(Lcom/sec/android/app/camera/CamcorderIndicators;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$100(Lcom/sec/android/app/camera/CamcorderIndicators;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$100(Lcom/sec/android/app/camera/CamcorderIndicators;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$300(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$300(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$300(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$400(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$400(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$400(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$500(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$500(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$500(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$600(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$600(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$600(Lcom/sec/android/app/camera/CamcorderIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/camera/CamcorderIndicators;->access$200(Lcom/sec/android/app/camera/CamcorderIndicators;IILandroid/view/View;Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators$1;->this$0:Lcom/sec/android/app/camera/CamcorderIndicators;

    iput v0, v1, Lcom/sec/android/app/camera/CamcorderIndicators;->mLastOrientation:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
