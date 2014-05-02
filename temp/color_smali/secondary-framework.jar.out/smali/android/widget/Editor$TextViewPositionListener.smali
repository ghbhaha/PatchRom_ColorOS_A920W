.class interface abstract Landroid/widget/Editor$TextViewPositionListener;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianhua.Lin@Plf.Framework.SDK : -private: modify for OppoEditor"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TextViewPositionListener"
.end annotation


# virtual methods
.method public abstract updatePosition(IIZZ)V
.end method
