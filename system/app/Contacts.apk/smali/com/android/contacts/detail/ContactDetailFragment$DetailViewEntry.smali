.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public accountIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public actionIcon:I

.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isBlacklist:Z

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field private mIsInSubSection:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public resPackageName:Ljava/lang/String;

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 6

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-wide p3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    iput-object p0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    if-eqz p6, :cond_0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    :cond_0
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v3, :cond_5

    :cond_1
    const-string v3, ""

    :goto_0
    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-static {p2, p5, p0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_6

    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    :cond_3
    :goto_1
    iget v3, p2, Lcom/android/contacts/model/DataKind;->iconRes:I

    if-lez v3, :cond_4

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->resPackageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/DataKind;->iconRes:I

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :cond_4
    return-object v0

    :cond_5
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    :cond_0
    return-object p0
.end method

.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto :goto_2
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
