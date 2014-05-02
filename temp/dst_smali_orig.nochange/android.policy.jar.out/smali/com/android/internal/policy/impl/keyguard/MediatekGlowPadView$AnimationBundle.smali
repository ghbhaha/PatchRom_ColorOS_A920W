.class Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 173
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 176
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    .line 189
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 165
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 180
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 182
    .local v0, anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0           #anim:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 185
    return-void
.end method
