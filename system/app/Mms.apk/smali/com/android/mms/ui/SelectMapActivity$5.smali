.class Lcom/android/mms/ui/SelectMapActivity$5;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    const-wide v5, 0x412e848000000000L

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
