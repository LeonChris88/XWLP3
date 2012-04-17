.class public Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountDisplay"
.end annotation


# instance fields
.field public final mDataSet:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public final mType:Ljava/lang/String;

.field public mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V

    return-void
.end method

.method private addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ZZ)V

    return-void
.end method

.method public setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ZZ)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putShouldSync(Z)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$300()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ZZ)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method
