.class Landroid/widget/AmoiTimePicker$5;
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
    .line 225
    iput-object p1, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateInputState()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$000(Landroid/widget/AmoiTimePicker;)V

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 229
    iget-object v1, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    iget-object v0, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    #getter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$100(Landroid/widget/AmoiTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Landroid/widget/AmoiTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/AmoiTimePicker;->access$102(Landroid/widget/AmoiTimePicker;Z)Z

    .line 230
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$200(Landroid/widget/AmoiTimePicker;)V

    .line 231
    iget-object v0, p0, Landroid/widget/AmoiTimePicker$5;->this$0:Landroid/widget/AmoiTimePicker;

    #calls: Landroid/widget/AmoiTimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/AmoiTimePicker;->access$300(Landroid/widget/AmoiTimePicker;)V

    .line 232
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method