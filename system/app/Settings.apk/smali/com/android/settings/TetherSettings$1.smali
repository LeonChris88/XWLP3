.class Lcom/android/settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/settings/TetherSettings;->access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method
