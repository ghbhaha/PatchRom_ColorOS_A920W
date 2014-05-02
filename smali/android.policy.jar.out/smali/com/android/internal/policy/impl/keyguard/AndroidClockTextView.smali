.class public Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;
.super Landroid/widget/TextView;
.source "AndroidClockTextView.java"


# static fields
.field private static final ATTR_USE_CLOCK_TYPEFACE:Ljava/lang/String; = "useClockTypeface"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static sClockTypeface:Landroid/graphics/Typeface;

.field private static sStandardTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mUseClockTypeface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v2, 0x0

    const-string v3, "useClockTypeface"

    invoke-interface {p2, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->mUseClockTypeface:Z

    .line 55
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    .line 56
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 61
    .local v0, paint:Landroid/graphics/Paint;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    return-void

    .line 52
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 61
    .restart local v0       #paint:Landroid/graphics/Paint;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method
