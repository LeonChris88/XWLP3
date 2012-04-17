.class public final enum Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
.super Ljava/lang/Enum;
.source "InteractionActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field public static final enum CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field public static final enum FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field public static final enum GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field public static final enum LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const-string v1, "LOGS"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const-string v1, "GROUPS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->$VALUES:[Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .locals 3

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_3

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .locals 1

    const-class v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->$VALUES:[Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v0}, [Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    return-object v0
.end method
