.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 851
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 852
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 853
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 854
    return-void

    .line 844
    :array_0
    .array-data 0x4
        0x85t 0x2t 0x2t 0x1t
        0x86t 0x2t 0x2t 0x1t
        0x87t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 863
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 858
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 868
    const v4, 0x1090044

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 870
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 871
    .local v2, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 873
    .local v1, itemView:Landroid/view/View;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 875
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 876
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 873
    goto :goto_1

    .line 878
    .end local v1           #itemView:Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 906
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 907
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method
