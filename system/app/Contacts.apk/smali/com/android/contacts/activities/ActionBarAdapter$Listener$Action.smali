.class public final enum Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

.field public static final enum CHANGE_SEARCH_QUERY:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

.field public static final enum DELETE_CONTACTS_CANCEL:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

.field public static final enum DELETE_CONTACTS_DONE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

.field public static final enum START_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

.field public static final enum STOP_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const-string v1, "CHANGE_SEARCH_QUERY"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->CHANGE_SEARCH_QUERY:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const-string v1, "START_SEARCH_MODE"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->START_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const-string v1, "STOP_SEARCH_MODE"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->STOP_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const-string v1, "DELETE_CONTACTS_DONE"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->DELETE_CONTACTS_DONE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const-string v1, "DELETE_CONTACTS_CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->DELETE_CONTACTS_CANCEL:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->CHANGE_SEARCH_QUERY:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->START_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->STOP_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->DELETE_CONTACTS_DONE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->DELETE_CONTACTS_CANCEL:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->$VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;
    .locals 1

    const-class v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->$VALUES:[Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-virtual {v0}, [Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    return-object v0
.end method
