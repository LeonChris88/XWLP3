.class public Lcom/android/settings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public addEntry(FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/PercentageBarChart;->createEntry(FI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public commit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f08014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    return-void
.end method
