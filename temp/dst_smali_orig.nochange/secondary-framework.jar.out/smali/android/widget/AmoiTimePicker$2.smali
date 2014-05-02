.class Landroid/widget/AmoiTimePicker$2;
.super Ljava/lang/Object;
.source "AmoiTimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AmoiTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AmoiTimePicker;


# direct methods
.method constructor <init>(Landroid/widget/AmoiTimePicker;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 150
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateInputState()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$000(Landroid/widget/AmoiTimePicker;)V

    .line 151
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-virtual {v0}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 154
    :cond_1
    iget-object v1, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    iget-object v0, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$100(Landroid/widget/AmoiTimePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    #setter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/AmoiTimePicker;->access$102(Landroid/widget/AmoiTimePicker;Z)Z

    .line 155
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$200(Landroid/widget/AmoiTimePicker;)V

    .line 158
    :cond_2
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$2;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$300(Landroid/widget/AmoiTimePicker;)V

    .line 159
    return-void

    .line 154
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
