.class Lcom/android/server/location/ComprehensiveCountryDetector$5;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "ComprehensiveCountryDetector"

    const-string v1, "onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$000(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$000(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0, v2, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-static {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    :cond_1
    return-void
.end method
