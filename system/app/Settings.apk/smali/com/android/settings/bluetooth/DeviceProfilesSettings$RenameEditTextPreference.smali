.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eq v3, v4, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    new-array v5, v6, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    invoke-direct {v6, v9}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v7

    invoke-interface {p1, v5}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
