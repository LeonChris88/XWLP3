.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private onMotionScan()V
    .locals 1

    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onMotionScan()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClicked()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    sget-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    :goto_0
    return v2

    :cond_0
    instance-of v3, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    sget-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    return-void
.end method

.method removeAllDevices()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method final setFilter(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method final setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method
