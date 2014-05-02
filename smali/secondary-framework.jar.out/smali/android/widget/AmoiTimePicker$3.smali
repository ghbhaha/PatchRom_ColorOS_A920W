.class Landroid/widget/AmoiTimePicker$3;
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
    .line 176
    iput-object p1, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateInputState()V
    invoke-static {v5}, Landroid/widget/AmoiTimePicker;->access$000(Landroid/widget/AmoiTimePicker;)V

    .line 179
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/AmoiTimePicker;->access$400(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 180
    .local v1, minValue:I
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/AmoiTimePicker;->access$400(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 181
    .local v0, maxValue:I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 182
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/AmoiTimePicker;->access$500(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 183
    .local v2, newHour:I
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-virtual {v5}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 184
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    iget-object v6, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/AmoiTimePicker;->access$100(Landroid/widget/AmoiTimePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    #setter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/AmoiTimePicker;->access$102(Landroid/widget/AmoiTimePicker;Z)Z

    .line 185
    iget-object v3, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/AmoiTimePicker;->access$200(Landroid/widget/AmoiTimePicker;)V

    .line 187
    :cond_0
    iget-object v3, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/AmoiTimePicker;->access$500(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 196
    .end local v2           #newHour:I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/AmoiTimePicker;->access$300(Landroid/widget/AmoiTimePicker;)V

    .line 197
    return-void

    .restart local v2       #newHour:I
    :cond_2
    move v3, v4

    .line 184
    goto :goto_0

    .line 188
    .end local v2           #newHour:I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 189
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/AmoiTimePicker;->access$500(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 190
    .restart local v2       #newHour:I
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-virtual {v5}, Landroid/widget/AmoiTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 191
    iget-object v5, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    iget-object v6, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/AmoiTimePicker;->access$100(Landroid/widget/AmoiTimePicker;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    #setter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/AmoiTimePicker;->access$102(Landroid/widget/AmoiTimePicker;Z)Z

    .line 192
    iget-object v3, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/AmoiTimePicker;->access$200(Landroid/widget/AmoiTimePicker;)V

    .line 194
    :cond_4
    iget-object v3, p0, Landroid/widget/AmoiTimePicker$3;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/AmoiTimePicker;->access$500(Landroid/widget/AmoiTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 191
    goto :goto_2
.end method
