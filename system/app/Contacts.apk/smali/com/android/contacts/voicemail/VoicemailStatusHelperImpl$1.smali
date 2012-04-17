.class Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$1;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;",
        ">;"
    }
.end annotation


# virtual methods
.method public compare(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I
    .locals 2

    invoke-static {p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$000(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v0

    invoke-static {p2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$000(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    check-cast p2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$1;->compare(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v0

    return v0
.end method
