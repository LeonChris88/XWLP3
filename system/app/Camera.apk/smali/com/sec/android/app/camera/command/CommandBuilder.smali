.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 11

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    :goto_0
    :sswitch_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xbd0

    if-ne p0, v1, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1b

    if-eq p0, v1, :cond_3

    const/16 v1, 0xbcf

    if-ne p0, v1, :cond_4

    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-eq p0, v1, :cond_5

    const/16 v1, 0xbc1

    if-ne p0, v1, :cond_6

    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x12

    if-eq p0, v1, :cond_7

    const/16 v1, 0xbc4

    if-ne p0, v1, :cond_8

    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    :cond_8
    const/16 v1, 0x27

    if-ne p0, v1, :cond_9

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :cond_9
    if-ne p0, v5, :cond_a

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x35

    if-ne p0, v1, :cond_b

    const-string v1, "CommandBuilder"

    const-string v2, "LaunchSnSMenuCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :cond_c
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/EditModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/EditModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/SelfModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/SelfModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VintagetModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/ObjecttrackingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ObjecttrackingSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/command/BlinkdetectionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BlinkdetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_19
    new-instance v5, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, v4

    move v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v0, v5

    goto/16 :goto_0

    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchRefreshCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_a
        0x20 -> :sswitch_a
        0x21 -> :sswitch_a
        0x22 -> :sswitch_a
        0x24 -> :sswitch_3
        0x25 -> :sswitch_a
        0x26 -> :sswitch_a
        0x32 -> :sswitch_2
        0x33 -> :sswitch_0
        0x36 -> :sswitch_1b
        0x37 -> :sswitch_1c
        0x38 -> :sswitch_19
        0x39 -> :sswitch_1a
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_19
        0x64 -> :sswitch_a
        0x65 -> :sswitch_a
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x130 -> :sswitch_4
        0x131 -> :sswitch_4
        0x132 -> :sswitch_4
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x135 -> :sswitch_4
        0x136 -> :sswitch_4
        0x137 -> :sswitch_4
        0x139 -> :sswitch_4
        0x13a -> :sswitch_4
        0x13b -> :sswitch_4
        0x190 -> :sswitch_b
        0x191 -> :sswitch_b
        0x192 -> :sswitch_b
        0x193 -> :sswitch_b
        0x194 -> :sswitch_b
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_5
        0x1f7 -> :sswitch_5
        0x1f8 -> :sswitch_5
        0x1f9 -> :sswitch_5
        0x1fa -> :sswitch_5
        0x1fb -> :sswitch_5
        0x1fc -> :sswitch_5
        0x1fd -> :sswitch_5
        0x1fe -> :sswitch_5
        0x1ff -> :sswitch_5
        0x200 -> :sswitch_5
        0x201 -> :sswitch_5
        0x258 -> :sswitch_c
        0x259 -> :sswitch_c
        0x25a -> :sswitch_c
        0x25b -> :sswitch_c
        0x25c -> :sswitch_c
        0x25d -> :sswitch_c
        0x25e -> :sswitch_c
        0x2bc -> :sswitch_7
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_7
        0x2bf -> :sswitch_7
        0x320 -> :sswitch_8
        0x321 -> :sswitch_8
        0x322 -> :sswitch_8
        0x323 -> :sswitch_8
        0x324 -> :sswitch_8
        0x325 -> :sswitch_8
        0x326 -> :sswitch_8
        0x327 -> :sswitch_8
        0x384 -> :sswitch_d
        0x385 -> :sswitch_d
        0x386 -> :sswitch_d
        0x387 -> :sswitch_d
        0x388 -> :sswitch_d
        0x389 -> :sswitch_d
        0x38a -> :sswitch_d
        0x38b -> :sswitch_d
        0x38c -> :sswitch_d
        0x38d -> :sswitch_d
        0x38e -> :sswitch_d
        0x38f -> :sswitch_d
        0x390 -> :sswitch_d
        0x391 -> :sswitch_d
        0x3e8 -> :sswitch_e
        0x3e9 -> :sswitch_e
        0x3ea -> :sswitch_e
        0x3eb -> :sswitch_e
        0x3ec -> :sswitch_e
        0x3ed -> :sswitch_e
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_e
        0x3f0 -> :sswitch_e
        0x3f1 -> :sswitch_e
        0x3f2 -> :sswitch_e
        0x3f3 -> :sswitch_e
        0x3f4 -> :sswitch_e
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_e
        0x3f8 -> :sswitch_e
        0x3f9 -> :sswitch_e
        0x44c -> :sswitch_f
        0x44d -> :sswitch_f
        0x44e -> :sswitch_f
        0x44f -> :sswitch_f
        0x450 -> :sswitch_f
        0x451 -> :sswitch_f
        0x452 -> :sswitch_f
        0x453 -> :sswitch_f
        0x454 -> :sswitch_f
        0x455 -> :sswitch_f
        0x456 -> :sswitch_f
        0x457 -> :sswitch_f
        0x458 -> :sswitch_f
        0x4b0 -> :sswitch_10
        0x4b1 -> :sswitch_10
        0x4b2 -> :sswitch_10
        0x514 -> :sswitch_11
        0x515 -> :sswitch_11
        0x578 -> :sswitch_12
        0x579 -> :sswitch_12
        0x5dc -> :sswitch_13
        0x5dd -> :sswitch_13
        0x5de -> :sswitch_13
        0x5df -> :sswitch_13
        0x640 -> :sswitch_14
        0x641 -> :sswitch_14
        0x6a4 -> :sswitch_15
        0x6a5 -> :sswitch_15
        0x6a6 -> :sswitch_15
        0x6a7 -> :sswitch_16
        0x6a8 -> :sswitch_16
        0x6a9 -> :sswitch_16
        0x708 -> :sswitch_17
        0x709 -> :sswitch_17
        0x70a -> :sswitch_17
        0x70b -> :sswitch_17
        0x76c -> :sswitch_18
        0x76d -> :sswitch_18
        0x76f -> :sswitch_18
        0x770 -> :sswitch_18
        0x7d0 -> :sswitch_1d
        0x7d1 -> :sswitch_1d
        0x834 -> :sswitch_1e
        0x835 -> :sswitch_1e
        0x898 -> :sswitch_20
        0x899 -> :sswitch_20
        0x89a -> :sswitch_20
        0x89b -> :sswitch_20
        0x8fc -> :sswitch_9
        0x8fd -> :sswitch_9
        0x8fe -> :sswitch_9
        0x8ff -> :sswitch_9
        0x900 -> :sswitch_9
        0x901 -> :sswitch_9
        0x902 -> :sswitch_9
        0x903 -> :sswitch_9
        0x904 -> :sswitch_9
        0x905 -> :sswitch_9
        0x906 -> :sswitch_9
        0x907 -> :sswitch_9
        0x908 -> :sswitch_9
        0x909 -> :sswitch_9
        0x90a -> :sswitch_9
        0x90b -> :sswitch_9
        0x90c -> :sswitch_9
        0x90d -> :sswitch_9
        0x90e -> :sswitch_9
        0x90f -> :sswitch_9
        0x910 -> :sswitch_9
        0x911 -> :sswitch_9
        0x912 -> :sswitch_9
        0xbb8 -> :sswitch_0
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbd -> :sswitch_0
        0xbc2 -> :sswitch_0
        0xbc3 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_0
        0xbc8 -> :sswitch_0
        0xbc9 -> :sswitch_0
        0xbca -> :sswitch_21
        0xbcb -> :sswitch_0
        0xbcd -> :sswitch_0
        0xbce -> :sswitch_0
        0xbcf -> :sswitch_0
        0xc1c -> :sswitch_22
        0xc1d -> :sswitch_22
        0xc1e -> :sswitch_22
        0xc1f -> :sswitch_22
        0xc80 -> :sswitch_23
        0xc81 -> :sswitch_23
        0xd48 -> :sswitch_6
        0xd49 -> :sswitch_6
        0xd4a -> :sswitch_6
        0xd4b -> :sswitch_6
        0xdac -> :sswitch_23
        0xdad -> :sswitch_23
        0xf3c -> :sswitch_1f
        0xf3d -> :sswitch_1f
    .end sparse-switch
.end method
