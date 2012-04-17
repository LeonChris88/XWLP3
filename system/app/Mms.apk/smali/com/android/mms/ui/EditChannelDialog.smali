.class public Lcom/android/mms/ui/EditChannelDialog;
.super Landroid/app/AlertDialog;
.source "EditChannelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mChannelId:Ljava/lang/String;

.field private mChannelIdEdit:Landroid/widget/EditText;

.field private mChannelName:Ljava/lang/String;

.field private mChannelNameEdit:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mEnableCheckBox:Landroid/widget/CheckBox;

.field private mEnabled:Z

.field private mID:Ljava/lang/Long;

.field private mIdWatcher:Landroid/text/TextWatcher;

.field private mMode:I

.field private mSaveButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;)V
    .locals 7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    new-instance v0, Lcom/android/mms/ui/EditChannelDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditChannelDialog$1;-><init>(Lcom/android/mms/ui/EditChannelDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iput-object p3, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    iput-object p4, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/EditChannelDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f09012f

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHANNEL_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    if-ne v8, v6, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f090130

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "pref_cb_my_channel_max_count"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x3e8

    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v4

    if-lt v4, v1, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f09008e

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :cond_6
    iget v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    if-ne v8, v6, :cond_8

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    if-eqz v0, :cond_7

    :goto_1
    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/mms/ui/ChannelUtils;->modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iget v7, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-interface {v6, v7, v2, v8}, Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;->onMyChannelSet(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    :goto_3
    invoke-static {v8, v2, v3, v6}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v6, v7

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p0}, Lcom/android/mms/ui/EditChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f09012b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/mms/ui/EditChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030003

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->onReferenceViews(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/EditChannelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_1
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
