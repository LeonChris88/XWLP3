.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field SetFontToAlert:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogLeftPadding:I

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogTopPadding:I

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogRightPadding:I

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogBottomPadding:I

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f0b06b2

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    const v0, 0x7f0b06b3

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    const v0, 0x7f0b06b4

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    const v0, 0x7f02003a

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge p2, v7, :cond_4

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b008c

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b008d

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    :cond_0
    return-void
.end method

.method public onOkButtonPressed()V
    .locals 29

    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    :goto_0
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    new-instance v26, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    new-instance v13, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v13}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    if-eqz v24, :cond_1

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v24, :cond_3

    const-string v26, "FontListPreference"

    const-string v27, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v23

    const-string v26, ".xml"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v26, " "

    const-string v27, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v14}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const/16 v25, 0x0

    if-eqz v23, :cond_4

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/flipfont/TypefaceFile;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fonts/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v13, v12, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v11

    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception in file operation, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    new-instance v20, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v19, 0x0

    const/16 v18, 0x2710

    const/16 v26, 0x2711

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v26

    iput v0, v9, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v27, "activity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/16 v26, 0x32

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v15, 0x1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const-string v26, "com.android.settings"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "com.infraware.polarisoffice"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v10

    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Intentionally left blank, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v26, "com.android.settings"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const-string v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MONOTYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v1, :cond_1

    const-string v0, "HelveticaNeueRegular.xml"

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b06b5

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_1
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public restartLater()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public selectDialog()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b008c

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b008d

    new-instance v7, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const v0, 0x7f0b06b9

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    :cond_2
    return-void
.end method
