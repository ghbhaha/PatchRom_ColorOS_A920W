.class Lcom/android/server/wm/WinAnimatorList;
.super Ljava/util/ArrayList;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/wm/WindowStateAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WinAnimatorList;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    return-void
.end method
