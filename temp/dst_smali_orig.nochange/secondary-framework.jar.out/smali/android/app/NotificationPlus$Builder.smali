.class public Landroid/app/NotificationPlus$Builder;
.super Ljava/lang/Object;
.source "NotificationPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNotification:Landroid/app/NotificationPlus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/app/NotificationPlus;

    invoke-direct {v0, p1}, Landroid/app/NotificationPlus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    .line 170
    return-void
.end method


# virtual methods
.method public create()Landroid/app/NotificationPlus;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "cancelable"

    .prologue
    .line 249
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.cancel.enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "message"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.content.text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.negative"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.negative"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.neutral"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.neutral"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    return-object p0
.end method

.method public setOnCancelListener(Landroid/app/PendingIntent;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "pendingIntent"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.cancel.intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.positive"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.positive"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/NotificationPlus$Builder;
    .locals 2
    .parameter "title"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/NotificationPlus$Builder;->mNotification:Landroid/app/NotificationPlus;

    iget-object v0, v0, Landroid/app/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.content.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    return-object p0
.end method
